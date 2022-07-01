.class public final Lccsancom/mbridge/msdk/foundation/tools/a$a;
.super Ljava/security/Provider;
.source "AESCBCUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 128
    const-string v0, "Crypto"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 129
    const-string v0, "SecureRandom.SHA1PRNG"

    const-string v1, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/a$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/a$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method
