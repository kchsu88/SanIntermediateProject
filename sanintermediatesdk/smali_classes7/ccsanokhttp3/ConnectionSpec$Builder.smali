.class public final Lccsanokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanokhttp3/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lccsanokhttp3/ConnectionSpec;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iget-boolean v0, p1, Lccsanokhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 279
    iget-object v0, p1, Lccsanokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 280
    iget-object v0, p1, Lccsanokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 281
    iget-boolean v0, p1, Lccsanokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 282
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-boolean p1, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 275
    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 285
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 287
    return-object p0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allEnabledTlsVersions()Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 312
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 314
    return-object p0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lccsanokhttp3/ConnectionSpec;
    .locals 1

    .line 351
    new-instance v0, Lccsanokhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lccsanokhttp3/ConnectionSpec;-><init>(Lccsanokhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 301
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 303
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 308
    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs cipherSuites([Lccsanokhttp3/CipherSuite;)Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 3
    .param p1, "cipherSuites"    # [Lccsanokhttp3/CipherSuite;

    .line 291
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 293
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 294
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 295
    aget-object v2, p1, v1

    iget-object v2, v2, Lccsanokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lccsanokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lccsanokhttp3/ConnectionSpec$Builder;

    move-result-object v1

    return-object v1

    .line 291
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public supportsTlsExtensions(Z)Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    .line 345
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 346
    iput-boolean p1, p0, Lccsanokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 347
    return-object p0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .line 329
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 331
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 336
    return-object p0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Lccsanokhttp3/TlsVersion;)Lccsanokhttp3/ConnectionSpec$Builder;
    .locals 3
    .param p1, "tlsVersions"    # [Lccsanokhttp3/TlsVersion;

    .line 318
    iget-boolean v0, p0, Lccsanokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 320
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 321
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 322
    aget-object v2, p1, v1

    iget-object v2, v2, Lccsanokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lccsanokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lccsanokhttp3/ConnectionSpec$Builder;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
