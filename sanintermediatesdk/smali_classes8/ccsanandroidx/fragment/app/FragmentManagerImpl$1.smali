.class Lccsanandroidx/fragment/app/FragmentManagerImpl$1;
.super Lccsanandroidx/activity/OnBackPressedCallback;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManagerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .param p2, "x0"    # Z

    .line 105
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$1;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0, p2}, Lccsanandroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 108
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$1;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->handleOnBackPressed()V

    .line 109
    return-void
.end method
