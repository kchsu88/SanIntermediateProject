.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->stopPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/media/MediaPlayer;

.field final synthetic b:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Lccsanandroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;->b:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;->a:Lccsanandroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;->a:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V

    return-void
.end method
