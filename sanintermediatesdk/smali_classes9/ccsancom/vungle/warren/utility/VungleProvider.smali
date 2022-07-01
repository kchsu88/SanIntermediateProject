.class public final Lccsancom/vungle/warren/utility/VungleProvider;
.super Lccsanandroid/content/ContentProvider;
.source "VungleProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lccsanandroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lccsanandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;)Lccsanandroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lccsancom/vungle/warren/utility/VungleProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 15
    .local v0, "ctx":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->getInstance()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/utility/ActivityManager;->init(Lccsanandroid/content/Context;)V

    .line 18
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return v0
.end method
