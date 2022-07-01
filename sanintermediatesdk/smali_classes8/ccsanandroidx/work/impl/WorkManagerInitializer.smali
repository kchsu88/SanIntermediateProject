.class public Lccsanandroidx/work/impl/WorkManagerInitializer;
.super Lccsanandroid/content/ContentProvider;
.source "WorkManagerInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsanandroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lccsanandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;)Lccsanandroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerInitializer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Lccsanandroidx/work/Configuration$Builder;

    invoke-direct {v1}, Lccsanandroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v1}, Lccsanandroidx/work/Configuration$Builder;->build()Lccsanandroidx/work/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroidx/work/WorkManager;->initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    return v0
.end method
