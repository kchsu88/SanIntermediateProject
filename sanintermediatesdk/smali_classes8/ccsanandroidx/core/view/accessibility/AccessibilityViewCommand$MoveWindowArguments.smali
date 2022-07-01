.class public final Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;
.super Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveWindowArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 2

    .line 189
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Lccsanandroid/os/Bundle;

    const-string v1, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 2

    .line 196
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Lccsanandroid/os/Bundle;

    const-string v1, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
