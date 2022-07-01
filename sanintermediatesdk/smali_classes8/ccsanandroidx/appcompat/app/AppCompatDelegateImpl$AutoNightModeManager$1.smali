.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;
.super Lccsanandroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    .line 3209
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 3212
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->onChange()V

    .line 3213
    return-void
.end method
