.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 295
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 6
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "leftInsetsChanged":Z
    const/4 v1, 0x0

    .line 306
    .local v1, "rightInsetsChanged":Z
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$600(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$702(Lccsancom/google/android/material/bottomappbar/BottomAppBar;I)I

    .line 309
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$800(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$900(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v2

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    if-eq v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 311
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v2, v5}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$902(Lccsancom/google/android/material/bottomappbar/BottomAppBar;I)I

    .line 313
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1000(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 314
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v2

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    if-eq v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 315
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1102(Lccsancom/google/android/material/bottomappbar/BottomAppBar;I)I

    .line 320
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 321
    :cond_5
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1200(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 323
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1300(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 324
    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 327
    :cond_6
    return-object p2
.end method
