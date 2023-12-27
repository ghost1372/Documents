---
title: SecurityHelper
---

# Hash

|Name|
|-|
|MD5|
|SHA1|
|SHA256|
|SHA384|
|SHA512|

## GetHash
generate hash from a string

```cs
var md5 = SecurityHelper.GetHash(text, HashAlgorithm.MD5);
// C7F373BEB9BC8072DB7B41917B02A788

var sha256 = SecurityHelper.GetHash(text, HashAlgorithm.SHA256);
//A69AC8A63339FF52973B6FC4462EB685DF1AA5B795B39FAABE809C0263C8FACB
```

## GetHashFromFileAsync
generate hash from a file

```cs
var md5 = await SecurityHelper.GetHashFromFileAsync(filePath, HashAlgorithm.MD5);
// C7F373BEB9BC8072DB7B41917B02A788

var sha256 = await SecurityHelper.GetHashFromFileAsync(filePath, HashAlgorithm.SHA256);
//A69AC8A63339FF52973B6FC4462EB685DF1AA5B795B39FAABE809C0263C8FACB
```

# Text Encryption

## EncryptStringSymmetric/DecrypStringSymmetric

|Symmetric Algorithm|
|-|
|RC4|
|RC2_CBC|
|RC2_ECB|
|RC2_CBC_PKCS7|
|RC2_ECB_PKCS7|
|AES_CBC|
|AES_CBC_PKCS7|
|AES_CCM|
|AES_ECB|
|AES_ECB_PKCS7|
|DES_CBC|
|DES_CBC_PKCS7|
|DES_ECB|
|DES_ECB_PKCS7|
|TRIPLE_DES_CBC|
|TRIPLE_DES_CBC_PKCS7|
|TRIPLE_DES_ECB|
|TRIPLE_DES_ECB_PKCS7|


```cs
var encText = SecurityHelper.EncryptStringSymmetric("Hello", "123456789123456");

var decText = SecurityHelper.DecrypStringSymmetric(encText, "123456789123456");
```

## EncryptStringAsymmetric/DecryptStringAsymmetric

|Asymmetric Algorithm|
|-|
|DSA_SHA1|
|DSA_SHA256|
|ECDSA_P256_SHA256|
|ECDSA_P384_SHA384|
|ECDSA_P521_SHA512|
|RSA_OAEP_SHA1|
|RSA_OAEP_SHA256|
|RSA_OAEP_SHA384|
|RSA_OAEP_SHA512|
|RSA_PKCS1|
|RSASIGN_PKCS1_SHA1|
|RSASIGN_PKCS1_SHA256|
|RSASIGN_PKCS1_SHA384|
|RSASIGN_PKCS1_SHA512|
|RSASIGN_PSS_SHA1|
|RSASIGN_PSS_SHA256|
|RSASIGN_PSS_SHA384|
|RSASIGN_PSS_SHA512|
|ECDSA_SHA256|
|ECDSA_SHA384|
|ECDSA_SHA512|

```cs
var encText = SecurityHelper.EncryptStringAsymmetric("Hello", publicKey);

var decText = SecurityHelper.DecryptStringAsymmetric(encText, privateKey);
```

if you want, you can generate Public/Private key:

```cs
var keyPair = SecurityHelper.GenerateAsymmetricKeyPair(asymmetricAlgorithm, keySize);
IBuffer publicKeyBuffer = keyPair.ExportPublicKey();
IBuffer privateKeyBuffer = keyPair.Export();

var encText = SecurityHelper.EncryptStringAsymmetric("Hello", publicKeyBuffer);
var decText = SecurityHelper.DecryptStringAsymmetric(encText, privateKeyBuffer);
```

or you can convert IBuffer to string:

```cs
string publicKey = CryptographicBuffer.EncodeToHexString(publicKeyBuffer);
string privateKey = CryptographicBuffer.EncodeToHexString(privateKeyBuffer);

var encText = SecurityHelper.EncryptStringAsymmetric("Hello", publicKey);
var decText = SecurityHelper.DecryptStringAsymmetric(encText, privateKey);
```

## EncryptBase64/DecryptBase64
```cs
var encText = SecurityHelper.EncryptBase64("Hello");

var decText = SecurityHelper.DecryptBase64(encText);
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
