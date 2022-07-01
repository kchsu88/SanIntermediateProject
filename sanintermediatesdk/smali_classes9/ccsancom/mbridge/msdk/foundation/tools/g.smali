.class public Lccsancom/mbridge/msdk/foundation/tools/g;
.super Ljava/lang/Object;
.source "DomainSameTool.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "DomainSameTool"

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 16
    nop

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 18
    return v0

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 23
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return v0
.end method
