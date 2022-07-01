.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 721
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .line 729
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 730
    return-void
.end method

.method public onShown()V
    .locals 2

    .line 724
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;->onShown(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 725
    return-void
.end method
