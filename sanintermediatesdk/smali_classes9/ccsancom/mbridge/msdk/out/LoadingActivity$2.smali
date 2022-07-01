.class Lccsancom/mbridge/msdk/out/LoadingActivity$2;
.super Lccsanandroid/content/BroadcastReceiver;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/out/LoadingActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$2;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$2;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/LoadingActivity;->finish()V

    .line 53
    return-void
.end method
