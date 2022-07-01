.class Lccsanandroidx/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AlertController;->setScrollIndicators(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AlertController;

.field final synthetic val$bottom:Lccsanandroid/view/View;

.field final synthetic val$top:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController;

    .line 600
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$3;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController$3;->val$top:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsanandroidx/appcompat/app/AlertController$3;->val$bottom:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 603
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$3;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$3;->val$top:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController$3;->val$bottom:Lccsanandroid/view/View;

    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/app/AlertController;->manageScrollIndicators(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 604
    return-void
.end method
