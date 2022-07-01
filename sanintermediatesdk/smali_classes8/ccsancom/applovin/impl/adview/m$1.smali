.class Lccsancom/applovin/impl/adview/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/m;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/m;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/m$1;->a:Lccsancom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$1;->a:Lccsancom/applovin/impl/adview/m;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/m;->dismiss()V

    return-void
.end method
