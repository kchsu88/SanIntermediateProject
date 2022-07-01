.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Lccsanandroidx/appcompat/widget/ActionMenuView;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

.field final synthetic val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

.field final synthetic val$fabAlignmentMode:I

.field final synthetic val$fabAttached:Z


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;Lccsanandroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 807
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$fabAlignmentMode:I

    iput-boolean p4, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$fabAttached:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 810
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iget v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$fabAlignmentMode:I

    iget-boolean v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$8;->val$fabAttached:Z

    .line 811
    invoke-virtual {v1, v0, v2, v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Lccsanandroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v1

    int-to-float v1, v1

    .line 810
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    .line 812
    return-void
.end method
