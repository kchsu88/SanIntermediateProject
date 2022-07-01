.class public Lccsancom/applovin/sdk/AppLovinInitProvider;
.super Lccsanandroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lccsanandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/AppLovinContentProviderUtils;->getType(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;)Lccsanandroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinInitProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->isTestApp(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/sdk/n;->a()V

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinInitProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/m;->a(Lccsanandroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;
    .locals 0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/AppLovinContentProviderUtils;->openFile(Lccsanandroid/net/Uri;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/AppLovinContentProviderUtils;->query(Lccsanandroid/net/Uri;)Lccsanandroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
