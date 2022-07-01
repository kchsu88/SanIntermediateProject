.class public final Lccsancom/mbridge/msdk/foundation/tools/t$a;
.super Ljava/lang/Object;
.source "SameSDKTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private static a(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 2

    .line 46
    new-instance p0, Lccsanandroid/content/Intent;

    const-string v0, "market://details?id=com.package.name"

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    return-object p0
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z
    .locals 5

    .line 105
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->b(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_3

    .line 110
    :cond_0
    nop

    .line 1092
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1093
    goto :goto_0

    .line 1096
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1097
    const-string v3, "details?id="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1100
    :cond_2
    const/4 p1, 0x0

    .line 110
    :goto_0
    nop

    .line 111
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    return v1

    .line 115
    :cond_3
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v3

    .line 116
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 117
    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ResolveInfo;

    .line 120
    iget-object v2, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v2, v2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    invoke-virtual {v3, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 122
    goto :goto_2

    .line 124
    :cond_4
    goto :goto_1

    .line 126
    :cond_5
    :goto_2
    invoke-virtual {p0, v3}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 127
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 p0, 0x1

    return p0

    .line 107
    :cond_6
    :goto_3
    return v1

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    invoke-static {p0}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDKUtil"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 69
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "market"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 75
    :cond_0
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-static {p0}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDKUtil"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3

    .line 81
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v1, "market.android.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 87
    :cond_2
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    invoke-static {p0}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SDKUtil"

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return v0
.end method
