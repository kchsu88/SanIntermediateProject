.class Lccsanandroidx/media/MediaBrowserServiceCompatApi26;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;,
        Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;,
        Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MBSCompatApi26"

.field static sResultFlags:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    :try_start_0
    const-class v0, Lccsanandroid/service/media/MediaBrowserService$Result;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26;->sResultFlags:Ljava/lang/reflect/Field;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static createService(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "serviceProxy"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;

    .line 49
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)V

    return-object v0
.end method

.method public static getBrowserRootHints(Ljava/lang/Object;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "serviceObj"    # Ljava/lang/Object;

    .line 57
    move-object v0, p0

    check-cast v0, Lccsanandroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Lccsanandroid/service/media/MediaBrowserService;->getBrowserRootHints()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 53
    move-object v0, p0

    check-cast v0, Lccsanandroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 54
    return-void
.end method
