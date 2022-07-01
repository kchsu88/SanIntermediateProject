.class Lccsanandroidx/core/content/ContextCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    return-void
.end method

.method static startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .param p1, "intents"    # [Lccsanandroid/content/Intent;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "intents",
            "options"
        }
    .end annotation

    .line 823
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/Context;->startActivities([Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V

    .line 824
    return-void
.end method

.method static startActivity(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "intent",
            "options"
        }
    .end annotation

    .line 828
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V

    .line 829
    return-void
.end method
