.class Lccsancom/google/android/material/textfield/TextInputLayout$2;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/TextInputLayout;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 2823
    iput-object p1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$2;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2826
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$2;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->access$300(Lccsancom/google/android/material/textfield/TextInputLayout;)Lccsancom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->performClick()Z

    .line 2828
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$2;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->access$300(Lccsancom/google/android/material/textfield/TextInputLayout;)Lccsancom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 2829
    return-void
.end method
