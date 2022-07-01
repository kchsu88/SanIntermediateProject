.class Lccsancom/applovin/impl/adview/p$27$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p$27;->onPrepared(Lccsanandroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p$27;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p$27;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$27$2;->a:Lccsancom/applovin/impl/adview/p$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    :goto_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27$2;->a:Lccsancom/applovin/impl/adview/p$27;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->e(Lccsancom/applovin/impl/adview/p;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27$2;->a:Lccsancom/applovin/impl/adview/p$27;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->f(Lccsancom/applovin/impl/adview/p;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27$2;->a:Lccsancom/applovin/impl/adview/p$27;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->g(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27$2;->a:Lccsancom/applovin/impl/adview/p$27;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->g(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->g()V

    goto :goto_1

    :cond_1
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
