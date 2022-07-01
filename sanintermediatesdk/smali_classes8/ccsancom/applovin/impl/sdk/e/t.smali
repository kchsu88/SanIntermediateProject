.class public abstract Lccsancom/applovin/impl/sdk/e/t;
.super Lccsancom/applovin/impl/sdk/e/a;

# interfaces
.implements Lccsancom/applovin/impl/sdk/network/b$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/applovin/impl/sdk/e/a;",
        "Lccsancom/applovin/impl/sdk/network/b$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/network/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/network/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lccsancom/applovin/impl/sdk/network/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/network/b$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected d:Lccsancom/applovin/impl/sdk/network/b$a;

.field private e:Lccsancom/applovin/impl/sdk/e/o$a;

.field private f:Lccsancom/applovin/impl/sdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lccsancom/applovin/impl/sdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Lccsancom/applovin/impl/sdk/k;",
            "Z)V"
        }
    .end annotation

    const-string v0, "TaskRepeatRequest"

    invoke-direct {p0, v0, p2, p3}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    sget-object p3, Lccsancom/applovin/impl/sdk/e/o$a;->c:Lccsancom/applovin/impl/sdk/e/o$a;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/t;->e:Lccsancom/applovin/impl/sdk/e/o$a;

    const/4 p3, 0x0

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/t;->f:Lccsancom/applovin/impl/sdk/c/b;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/t;->g:Lccsancom/applovin/impl/sdk/c/b;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    new-instance p1, Lccsancom/applovin/impl/sdk/network/b$a;

    invoke-direct {p1}, Lccsancom/applovin/impl/sdk/network/b$a;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->d:Lccsancom/applovin/impl/sdk/network/b$a;

    new-instance p1, Lccsancom/applovin/impl/sdk/e/t$1;

    invoke-direct {p1, p0, p2}, Lccsancom/applovin/impl/sdk/e/t$1;-><init>(Lccsancom/applovin/impl/sdk/e/t;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->c:Lccsancom/applovin/impl/sdk/network/b$c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/t;)Lccsancom/applovin/impl/sdk/network/c;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/t;Lccsancom/applovin/impl/sdk/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/t;->c(Lccsancom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/e/t;)Lccsancom/applovin/impl/sdk/c/b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/e/t;->f:Lccsancom/applovin/impl/sdk/c/b;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/e/t;)Lccsancom/applovin/impl/sdk/e/o$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/e/t;->e:Lccsancom/applovin/impl/sdk/e/o$a;

    return-object p0
.end method

.method private c(Lccsancom/applovin/impl/sdk/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "TST;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/t;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/c/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/c/c;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/e/t;)Lccsancom/applovin/impl/sdk/c/b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/e/t;->g:Lccsancom/applovin/impl/sdk/c/b;

    return-object p0
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public a(Lccsancom/applovin/impl/sdk/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->f:Lccsancom/applovin/impl/sdk/c/b;

    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/e/o$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->e:Lccsancom/applovin/impl/sdk/e/o$a;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public b(Lccsancom/applovin/impl/sdk/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/t;->g:Lccsancom/applovin/impl/sdk/c/b;

    return-void
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/t;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->P()Lccsancom/applovin/impl/sdk/network/b;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/t;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/t;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "AppLovin SDK is disabled"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x16

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/c;->e()Lccsanorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "POST"

    goto :goto_1

    :cond_2
    const-string v1, "GET"

    :goto_1
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/network/c;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/t;->a:Lccsancom/applovin/impl/sdk/network/c;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/t;->d:Lccsancom/applovin/impl/sdk/network/b$a;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/t;->c:Lccsancom/applovin/impl/sdk/network/b$c;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/network/b;->a(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/network/b$a;Lccsancom/applovin/impl/sdk/network/b$c;)V

    goto :goto_3

    :cond_4
    const-string v0, "Task has an invalid or null request endpoint."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/t;->d(Ljava/lang/String;)V

    const/16 v0, -0x384

    :goto_2
    invoke-virtual {p0, v0, v2, v2}, Lccsancom/applovin/impl/sdk/e/t;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
