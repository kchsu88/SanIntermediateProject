.class Lccsancom/applovin/impl/adview/activity/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/b$2;->a:Lccsancom/applovin/impl/adview/activity/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/b$2;->a:Lccsancom/applovin/impl/adview/activity/b/b;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/applovin/impl/adview/activity/b/b;->i:J

    return-void
.end method
