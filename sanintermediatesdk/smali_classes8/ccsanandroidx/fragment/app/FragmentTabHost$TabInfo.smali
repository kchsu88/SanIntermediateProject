.class final Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field final args:Lccsanandroid/os/Bundle;

.field final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field fragment:Lccsanandroidx/fragment/app/Fragment;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 66
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 69
    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->args:Lccsanandroid/os/Bundle;

    .line 70
    return-void
.end method
