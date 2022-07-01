.class public final Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;
.super Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveAtGranularityArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendSelection()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Lccsanandroid/os/Bundle;

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getGranularity()I
    .locals 2

    .line 80
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Lccsanandroid/os/Bundle;

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
