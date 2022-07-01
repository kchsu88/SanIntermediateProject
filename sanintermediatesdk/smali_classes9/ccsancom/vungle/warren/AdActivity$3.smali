.class Lccsancom/vungle/warren/AdActivity$3;
.super Lccsanandroid/content/BroadcastReceiver;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdActivity;->connectBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdActivity;

    .line 214
    iput-object p1, p0, Lccsancom/vungle/warren/AdActivity$3;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 217
    const-string v0, "command"

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "stopAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#connectBroadcastReceiver"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "Receiving Invalid Broadcast: %1$s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :pswitch_1
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity$3;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdActivity;->finish()V

    .line 221
    nop

    .line 226
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x70511dc1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
