.class public Lccsancom/applovin/impl/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/a/e$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/applovin/impl/a/e$a;

.field private b:Lccsanandroid/net/Uri;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/e;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/a/e;
    .locals 2

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lccsancom/applovin/impl/a/e;

    invoke-direct {p1}, Lccsancom/applovin/impl/a/e;-><init>()V

    :goto_0
    iget-object v0, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p1, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "StaticResource"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/a/e;->a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    sget-object p0, Lccsancom/applovin/impl/a/e$a;->b:Lccsancom/applovin/impl/a/e$a;

    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    return-object p1

    :cond_1
    const-string v0, "IFrameResource"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/a/e;->a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lccsancom/applovin/impl/a/e$a;->c:Lccsancom/applovin/impl/a/e$a;

    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    goto :goto_1

    :cond_2
    iput-object v0, p1, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    :goto_1
    return-object p1

    :cond_3
    const-string v0, "HTMLResource"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/a/e;->a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lccsancom/applovin/impl/a/e$a;->d:Lccsancom/applovin/impl/a/e$a;

    iput-object v0, p1, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    invoke-static {p0}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    goto :goto_2

    :cond_4
    iput-object p0, p1, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string p2, "VastNonVideoResource"

    const-string v0, "Error occurred while initializing"

    invoke-virtual {p1, p2, v0, p0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/utils/p;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/p;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lccsancom/applovin/impl/a/e$a;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    return-object v0
.end method

.method public a(Lccsanandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Lccsanandroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lccsancom/applovin/impl/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lccsancom/applovin/impl/a/e;

    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    iget-object v3, p1, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    invoke-virtual {v1, v3}, Lccsanandroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e$a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastNonVideoResource{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->a:Lccsancom/applovin/impl/a/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->b:Lccsanandroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceContents=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
