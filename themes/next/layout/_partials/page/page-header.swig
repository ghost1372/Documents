<header class="post-header">

<h1 class="post-title" itemprop="name headline">
  {{- page.title }}
  {{- post_edit(page.source) }}
</h1>

<div class="post-meta">

          {%- set date_diff = date(post.date) != date(post.updated) %}
          {%- set time_diff = time(post.date) != time(post.updated) %}
          {%- set datetime_diff = date_diff or time_diff %}

          {%- if theme.post_meta.created_at %}
            <span class="post-meta-item">
              <span class="post-meta-item-icon">
                <i class="far fa-calendar"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.posted') }}</span>

              {%- if not date_diff and time_diff and theme.post_meta.updated_at.enable and theme.post_meta.updated_at.another_day %}
                {%- set create_title = __('post.created') + __('symbol.colon') + full_date(post.date) + ' / ' + __('post.modified') + __('symbol.colon') + time(post.updated) %}
              {% else %}
                {%- set create_title = __('post.created') + __('symbol.colon') + full_date(post.date) %}
              {%- endif %}

              <time title="{{ create_title }}" itemprop="dateCreated datePublished" datetime="{{ moment(post.date).format() }}">{{ date(post.date) }}</time>
            </span>
          {%- endif %}

          {%- if theme.post_meta.updated_at.enable and datetime_diff %}
            {%- set display_updated = not theme.post_meta.updated_at.another_day or theme.post_meta.updated_at.another_day and date_diff %}

            {%- if display_updated or not theme.post_meta.created_at %}
              <span class="post-meta-item">
                <span class="post-meta-item-icon">
                  <i class="far fa-calendar-check"></i>
                </span>
                <span class="post-meta-item-text">{{ __('post.edited') }}</span>
                <time title="{{ __('post.modified') + __('symbol.colon') + full_date(post.updated) }}" itemprop="dateModified" datetime="{{ moment(post.updated).format() }}">{{ date(post.updated) }}</time>
              </span>
            {%- endif %}
          {%- endif %}

          {%- if post.categories and post.categories.length and theme.post_meta.categories %}
            <span class="post-meta-item">
              <span class="post-meta-item-icon">
                <i class="far fa-folder"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.in') }}</span>
              {%- for cat in post.categories.toArray() %}
                <span itemprop="about" itemscope itemtype="http://schema.org/Thing">
                  <a href="{{ url_for(cat.path) }}" itemprop="url" rel="index"><span itemprop="name">{{ cat.name }}</span></a>
                </span>

                {%- set cat_length = post.categories.length %}
                {%- if cat_length > 1 and loop.index !== cat_length %}
                  {{ __('symbol.comma') }}
                {%- endif %}
              {%- endfor %}
            </span>
          {%- endif %}

          {# LeanCloud PageView #}
          {%- if theme.leancloud_visitors.enable or (theme.valine.enable and theme.valine.appid and theme.valine.appkey and theme.valine.visitor) %}
            <span id="{{ url_for(post.path) }}" class="post-meta-item leancloud_visitors" data-flag-title="{{ post.title }}" title="{{ __('post.views') }}">
              <span class="post-meta-item-icon">
                <i class="fa fa-eye"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.views') + __('symbol.colon') }}</span>
              <span class="leancloud-visitors-count"></span>
            </span>
          {%- endif %}

          {%- if theme.firestore.enable %}
            <span class="post-meta-item" title="{{ __('post.views') }}">
              <span class="post-meta-item-icon">
                <i class="fa fa-users"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.views') + __('symbol.colon') }}</span>
              <span class="firestore-visitors-count"></span>
            </span>
          {%- endif %}

          {%- if not is_index and theme.busuanzi_count.enable and theme.busuanzi_count.post_views %}
            <span class="post-meta-item" title="{{ __('post.views') }}" id="busuanzi_container_page_pv" style="display: none;">
              <span class="post-meta-item-icon">
                <i class="{{ theme.busuanzi_count.post_views_icon }}"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.views') + __('symbol.colon') }}</span>
              <span id="busuanzi_value_page_pv"></span>
            </span>
          {%- endif %}

          {{- next_inject('postMeta') }}

          {%- if config.symbols_count_time.symbols %}
          {%- if theme.symbols_count_time.separated_meta %}<br>{%- endif %}
            <span class="post-meta-item" title="{{ __('symbols_count_time.count') }}">
              <span class="post-meta-item-icon">
                <i class="far fa-file-word"></i>
              </span>
              {%- if theme.symbols_count_time.item_text_post %}
                <span class="post-meta-item-text">{{ __('symbols_count_time.count') + __('symbol.colon') }}</span>
              {%- endif %}
              <span>{{ symbolsCount(post) }}</span>
            </span>
          {%- endif %}

          {%- if config.symbols_count_time.time %}
            <span class="post-meta-item" title="{{ __('symbols_count_time.time') }}">
              <span class="post-meta-item-icon">
                <i class="far fa-clock"></i>
              </span>
              {%- if theme.symbols_count_time.item_text_post %}
                <span class="post-meta-item-text">{{ __('symbols_count_time.time') }} &asymp;</span>
              {%- endif %}
              <span>{{ symbolsTime(post, config.symbols_count_time.awl, config.symbols_count_time.wpm, __('symbols_count_time.time_minutes')) }}</span>
            </span>
          {%- endif %}

          {%- if post.description and (not theme.excerpt_description or not is_index) %}
            <div class="post-description">{{ post.description }}</div>
          {%- endif %}

        </div>

</header>
