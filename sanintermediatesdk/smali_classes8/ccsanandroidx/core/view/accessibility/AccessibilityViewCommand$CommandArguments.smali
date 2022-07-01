.class public abstract Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.super Ljava/lang/Object;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommandArguments"
.end annotation


# instance fields
.field mBundle:Lccsanandroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBundle(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Lccsanandroid/os/Bundle;

    .line 55
    return-void
.end method
