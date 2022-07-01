.class Lccsancom/applovin/impl/sdk/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/l;->a(Lccsanandroid/app/Activity;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/app/Activity;

.field final synthetic b:Lccsancom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l$4;->b:Lccsancom/applovin/impl/sdk/l;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/l$4;->a:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/l$4;->b:Lccsancom/applovin/impl/sdk/l;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$4;->a:Lccsanandroid/app/Activity;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/l;->a(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/content/Context;)V

    return-void
.end method
