.class Lccsancom/applovin/impl/adview/activity/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/a/c;->a(Lccsanandroid/widget/ImageView;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/v;Lccsancom/applovin/impl/adview/a;Lccsanandroid/widget/ProgressBar;Lccsanandroid/view/View;Lccsancom/applovin/adview/AppLovinAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/v;

.field final synthetic b:J

.field final synthetic c:Lccsancom/applovin/impl/adview/activity/a/c;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/a/c;Lccsancom/applovin/impl/adview/v;J)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/c$3;->c:Lccsancom/applovin/impl/adview/activity/a/c;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/c$3;->a:Lccsancom/applovin/impl/adview/v;

    iput-wide p3, p0, Lccsancom/applovin/impl/adview/activity/a/c$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a/c$3;->a:Lccsancom/applovin/impl/adview/v;

    iget-wide v1, p0, Lccsancom/applovin/impl/adview/activity/a/c$3;->b:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/o;->b(Lccsanandroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method
