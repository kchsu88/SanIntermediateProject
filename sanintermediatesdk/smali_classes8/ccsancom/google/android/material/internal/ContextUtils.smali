.class public Lccsancom/google/android/material/internal/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity(Lccsanandroid/content/Context;)Lccsanandroid/app/Activity;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 41
    :goto_0
    instance-of v0, p0, Lccsanandroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 42
    instance-of v0, p0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lccsanandroid/app/Activity;

    return-object v0

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Lccsanandroid/content/ContextWrapper;

    invoke-virtual {v0}, Lccsanandroid/content/ContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
