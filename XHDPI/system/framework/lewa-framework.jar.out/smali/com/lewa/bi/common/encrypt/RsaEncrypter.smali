.class public Lcom/lewa/bi/common/encrypt/RsaEncrypter;
.super Ljava/lang/Object;
.source "RsaEncrypter.java"


# static fields
.field private static final JKS:Ljava/lang/String; = "JKS"

.field private static final RSA:Ljava/lang/String; = "RSA"

.field private static final RSA_SPEC:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# instance fields
.field private dcipher:Ljavax/crypto/Cipher;

.field private ecipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "is"
    .parameter "keyStoreAliasName"
    .parameter "keyStorePassward"
    .parameter "aliasPassward"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    :try_start_0
    const-string v5, "JKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 97
    .local v2, keyStore:Ljava/security/KeyStore;
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 99
    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 100
    .local v0, certificate:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 101
    .local v4, publicKey:Ljava/security/PublicKey;
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 105
    .local v3, privateKey:Ljava/security/PrivateKey;
    const-string v5, "RSA"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->ecipher:Ljavax/crypto/Cipher;

    .line 106
    iget-object v5, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->ecipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 109
    const-string v5, "RSA"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->dcipher:Ljavax/crypto/Cipher;

    .line 110
    iget-object v5, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->dcipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    if-eqz p1, :cond_0

    .line 116
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v2           #keyStore:Ljava/security/KeyStore;
    .end local v3           #privateKey:Ljava/security/PrivateKey;
    .end local v4           #publicKey:Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz p1, :cond_1

    .line 116
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 118
    :cond_1
    :goto_1
    throw v5

    .line 117
    .restart local v0       #certificate:Ljava/security/cert/Certificate;
    .restart local v2       #keyStore:Ljava/security/KeyStore;
    .restart local v3       #privateKey:Ljava/security/PrivateKey;
    .restart local v4       #publicKey:Ljava/security/PublicKey;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v2           #keyStore:Ljava/security/KeyStore;
    .end local v3           #privateKey:Ljava/security/PrivateKey;
    .end local v4           #publicKey:Ljava/security/PublicKey;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .parameter "ecipher"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->ecipher:Ljavax/crypto/Cipher;

    .line 82
    return-void
.end method

.method private static createEncrypter(Ljava/security/PublicKey;)Lcom/lewa/bi/common/encrypt/RsaEncrypter;
    .locals 2
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, ecipher:Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 40
    new-instance v1, Lcom/lewa/bi/common/encrypt/RsaEncrypter;

    invoke-direct {v1, v0}, Lcom/lewa/bi/common/encrypt/RsaEncrypter;-><init>(Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public static getEncryptorFromCertificate(Ljava/io/InputStream;)Lcom/lewa/bi/common/encrypt/RsaEncrypter;
    .locals 6
    .parameter "stream"

    .prologue
    .line 46
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 47
    .local v1, certificateFactory:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 48
    .local v0, certificate:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 49
    .local v3, publicKey:Ljava/security/PublicKey;
    invoke-static {v3}, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->createEncrypter(Ljava/security/PublicKey;)Lcom/lewa/bi/common/encrypt/RsaEncrypter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :cond_0
    :goto_0
    return-object v4

    .line 50
    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v1           #certificateFactory:Ljava/security/cert/CertificateFactory;
    .end local v3           #publicKey:Ljava/security/PublicKey;
    :catch_0
    move-exception v2

    .line 51
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz p0, :cond_1

    .line 55
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 57
    :cond_1
    :goto_1
    throw v4

    .line 56
    .restart local v0       #certificate:Ljava/security/cert/Certificate;
    .restart local v1       #certificateFactory:Ljava/security/cert/CertificateFactory;
    .restart local v3       #publicKey:Ljava/security/PublicKey;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v1           #certificateFactory:Ljava/security/cert/CertificateFactory;
    .end local v3           #publicKey:Ljava/security/PublicKey;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static getEncryptorFromPublicKey(Ljava/lang/String;)Lcom/lewa/bi/common/encrypt/RsaEncrypter;
    .locals 6
    .parameter "publicKeyString"

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/lewa/bi/common/gson/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    .local v1, keyBytes:[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 71
    .local v3, keySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 72
    .local v2, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 74
    .local v4, publicKey:Ljava/security/PublicKey;
    invoke-static {v4}, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->createEncrypter(Ljava/security/PublicKey;)Lcom/lewa/bi/common/encrypt/RsaEncrypter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 75
    .end local v1           #keyBytes:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    .end local v3           #keySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v4           #publicKey:Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lewa/bi/common/gson/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->decrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/util/ByteUtil;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public decrypt([B)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->dcipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lewa/bi/common/util/ByteUtil;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->encrypt([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lewa/bi/common/gson/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt([B)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/lewa/bi/common/encrypt/RsaEncrypter;->ecipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
