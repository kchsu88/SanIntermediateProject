.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;
.super Ljava/lang/Object;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lccsanandroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 120
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Lccsanandroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 132
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;)Lccsanandroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;Lccsanandroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method