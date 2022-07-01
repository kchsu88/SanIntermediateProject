.class Lccsancom/applovin/impl/adview/p$29;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$29;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$29;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->d(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/os/Handler;

    move-result-object p1

    new-instance v0, Lccsancom/applovin/impl/adview/p$29$1;

    invoke-direct {v0, p0, p2, p3}, Lccsancom/applovin/impl/adview/p$29$1;-><init>(Lccsancom/applovin/impl/adview/p$29;II)V

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
