.class Lccsanandroidx/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lccsanandroidx/core/widget/NestedScrollView$OnScrollChangeListener;


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

    .line 591
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$2;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController$2;->val$top:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsanandroidx/appcompat/app/AlertController$2;->val$bottom:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Lccsanandroidx/core/widget/NestedScrollView;IIII)V
    .locals 2
    .param p1, "v"    # Lccsanandroidx/core/widget/NestedScrollView;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 596
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$2;->val$top:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$2;->val$bottom:Lccsanandroid/view/View;

    invoke-static {p1, v0, v1}, Lccsanandroidx/appcompat/app/AlertController;->manageScrollIndicators(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 597
    return-void
.end method
