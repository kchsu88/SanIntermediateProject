.class public Lccsancom/mbridge/msdk/foundation/tools/d;
.super Ljava/lang/Object;
.source "DomainSameDiTool.java"


# direct methods
.method public static a(Lccsanandroid/content/Context;)V
    .locals 7

    .line 11
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 15
    :cond_0
    :try_start_0
    const-string v0, "com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebEnvCheckEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 17
    const-string v2, "check"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lccsanandroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 18
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_0
    return-void
.end method
