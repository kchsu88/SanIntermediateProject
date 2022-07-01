.class public Lccsansan/cb/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# static fields
.field private static final addDownloadListener:[B

.field private static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cb/IncentiveDownloadUtils;->addDownloadListener:[B

    .line 13
    invoke-static {}, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload()V

    return-void

    nop

    :array_0
    .array-data 1
        -0x4bt
        -0x57t
        0x6et
        -0x7at
        0x23t
        -0x70t
        0x2at
        -0x3t
        0x4ct
        0x6ct
        0x63t
        0x36t
        -0xat
        -0x7ft
        -0x26t
        -0x39t
    .end array-data
.end method

.method private static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 2

    .line 37
    const-string v0, "1234567890"

    const-string v1, "abcdef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCv2mDDXJjzMX+AwRNaP9IicoT01urAb8BJN4LSuujQ33YMnMJ2ERdfN+ew9MD6Ip+hVNPkm+6EjVNGMhDv1QhVYcWD4ojetgQb/Y59Pjr7lbeafcGYDxHvfpafA9Rbn6itXdRWE8lFXfqRmO2fZ8PRFmG19TQTpbW0Px80ZczoywIDAQAB"

    invoke-static {p0, v0}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 5
    sget-boolean v1, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z

    const-string v2, "encrpyt failed"

    if-eqz v1, :cond_2

    .line 6
    const/16 v1, 0x10

    invoke-static {v1}, Lccsansan/bw/getName;->getDownloadingList(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 8
    invoke-static {p0, v0}, Lccsansan/cb/addDownloadListener;->IncentiveDownloadUtils([B[B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    array-length v3, p0

    rem-int/2addr v3, v1

    if-nez v3, :cond_1

    const/4 v1, 0x2

    .line 16
    invoke-static {v0, p1}, Lccsansan/cb/removeDownloadListener;->getDownloadingList([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    move-object v0, p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrpyt type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Beyla.DecorP"

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    array-length v1, v0

    invoke-static {v1}, Lccsansan/bw/getName;->IncentiveDownloadUtils(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 32
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static IncentiveDownloadUtils([BLjava/security/interfaces/RSAPublicKey;)[B
    .locals 8

    .line 41
    :try_start_0
    array-length v0, p0

    .line 42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "RSA/ECB/PKCS1Padding"

    .line 45
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 46
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    sub-int v6, v0, v4

    if-lez v6, :cond_1

    const/16 v7, 0x75

    if-le v6, v7, :cond_0

    .line 49
    invoke-virtual {v2, p0, v4, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v2, p0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    .line 49
    :goto_1
    nop

    .line 51
    nop

    .line 53
    array-length v6, v4

    invoke-virtual {v1, v4, p1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v3

    mul-int/lit8 v4, v5, 0x75

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCv2mDDXJjzMX+AwRNaP9IicoT0\n1urAb8BJN4LSuujQ33YMnMJ2ERdfN+ew9MD6Ip+hVNPkm+6EjVNGMhDv1QhVYcWD\n4ojetgQb/Y59Pjr7lbeafcGYDxHvfpafA9Rbn6itXdRWE8lFXfqRmO2fZ8PRFmG1\n9TQTpbW0Px80ZczoywIDAQAB"

    invoke-static {p0, v0}, Lccsansan/cb/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 9
    sget-boolean v0, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z

    const-string v1, "encrpyt failed"

    if-eqz v0, :cond_2

    .line 10
    const/16 v0, 0x10

    invoke-static {v0}, Lccsansan/bw/getName;->getDownloadingList(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 12
    invoke-static {p0, v2}, Lccsansan/cb/addDownloadListener;->IncentiveDownloadUtils([B[B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 14
    array-length v3, p0

    rem-int/2addr v3, v0

    if-nez v3, :cond_1

    .line 15
    sget-object v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->ENCRYPT_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    .line 20
    invoke-static {v2, p1}, Lccsansan/cb/removeDownloadListener;->getDownloadingList([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    sget-object v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->ENCRYPT_KEY_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    move-object v2, p1

    goto :goto_0

    :cond_0
    nop

    .line 30
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrpyt type:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Beyla.DecorP"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    invoke-virtual {v0}, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    array-length v0, v2

    invoke-static {v0}, Lccsansan/bw/getName;->IncentiveDownloadUtils(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 35
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 37
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDownloadingList(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCv2mDDXJjzMX+AwRNaP9IicoT01urAb8BJN4LSuujQ33YMnMJ2ERdfN+ew9MD6Ip+hVNPkm+6EjVNGMhDv1QhVYcWD4ojetgQb/Y59Pjr7lbeafcGYDxHvfpafA9Rbn6itXdRWE8lFXfqRmO2fZ8PRFmG19TQTpbW0Px80ZczoywIDAQAB"

    invoke-static {p0, v0}, Lccsansan/cb/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lccsansan/cb/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    invoke-static {p0, p1}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static removeDownloadListener(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lccsansan/cb/unifiedDownload;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "RSA"

    .line 2
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static unifiedDownload()V
    .locals 6

    .line 59
    const-string v0, "UTF-8"

    new-instance v1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 60
    const-string v2, "support_aes"

    invoke-virtual {v1, v2}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Beyla.DecorP"

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support aes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v3, "san_sdk"

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/cb/addDownloadListener;->IncentiveDownloadUtils([B[B)[B

    move-result-object v0

    .line 68
    sget-object v3, Lccsansan/cb/IncentiveDownloadUtils;->addDownloadListener:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    sput-boolean v0, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    sget-boolean v0, Lccsansan/cb/IncentiveDownloadUtils;->unifiedDownload:Z

    invoke-virtual {v1, v2, v0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    return-void
.end method
