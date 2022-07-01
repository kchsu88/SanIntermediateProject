.class Lccsancom/applovin/impl/adview/p$27$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p$27$1;->onError(Lccsanandroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lccsancom/applovin/impl/adview/p$27$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p$27$1;II)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->c:Lccsancom/applovin/impl/adview/p$27$1;

    iput p2, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->a:I

    iput p3, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->c:Lccsancom/applovin/impl/adview/p$27$1;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/p$27$1;->a:Lccsancom/applovin/impl/adview/p$27;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media player error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/applovin/impl/adview/p$27$1$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/p;->handleMediaError(Ljava/lang/String;)V

    return-void
.end method
