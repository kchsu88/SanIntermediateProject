.class public final Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;
.super Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProgressArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 2

    .line 175
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;->mBundle:Lccsanandroid/os/Bundle;

    const-string v1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method
