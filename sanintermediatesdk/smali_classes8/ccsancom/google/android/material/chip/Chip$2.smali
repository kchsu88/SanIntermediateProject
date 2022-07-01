.class Lccsancom/google/android/material/chip/Chip$2;
.super Lccsanandroid/view/ViewOutlineProvider;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/chip/Chip;->initOutlineProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/chip/Chip;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/chip/Chip;

    .line 406
    iput-object p1, p0, Lccsancom/google/android/material/chip/Chip$2;->this$0:Lccsancom/google/android/material/chip/Chip;

    invoke-direct {p0}, Lccsanandroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/view/View;Lccsanandroid/graphics/Outline;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "outline"    # Lccsanandroid/graphics/Outline;

    .line 410
    iget-object v0, p0, Lccsancom/google/android/material/chip/Chip$2;->this$0:Lccsancom/google/android/material/chip/Chip;

    invoke-static {v0}, Lccsancom/google/android/material/chip/Chip;->access$000(Lccsancom/google/android/material/chip/Chip;)Lccsancom/google/android/material/chip/ChipDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lccsancom/google/android/material/chip/Chip$2;->this$0:Lccsancom/google/android/material/chip/Chip;

    invoke-static {v0}, Lccsancom/google/android/material/chip/Chip;->access$000(Lccsancom/google/android/material/chip/Chip;)Lccsancom/google/android/material/chip/ChipDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/chip/ChipDrawable;->getOutline(Lccsanandroid/graphics/Outline;)V

    goto :goto_0

    .line 413
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Outline;->setAlpha(F)V

    .line 415
    :goto_0
    return-void
.end method
