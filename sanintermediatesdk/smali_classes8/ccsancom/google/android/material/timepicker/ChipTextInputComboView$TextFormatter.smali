.class Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
.super Lccsancom/google/android/material/internal/TextWatcherAdapter;
.source "ChipTextInputComboView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/timepicker/ChipTextInputComboView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFormatter"
.end annotation


# static fields
.field private static final DEFAULT_TEXT:Ljava/lang/String; = "00"


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-direct {p0}, Lccsancom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Lccsancom/google/android/material/timepicker/ChipTextInputComboView$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/timepicker/ChipTextInputComboView;
    .param p2, "x1"    # Lccsancom/google/android/material/timepicker/ChipTextInputComboView$1;

    .line 159
    invoke-direct {p0, p1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Lccsanandroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Lccsanandroid/text/Editable;

    .line 165
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->access$200(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;)Lccsancom/google/android/material/chip/Chip;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    const-string v2, "00"

    invoke-static {v1, v2}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->access$100(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->access$200(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;)Lccsancom/google/android/material/chip/Chip;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v1, p1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->access$100(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method
