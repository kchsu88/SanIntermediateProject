.class Lccsanandroidx/core/content/pm/ShortcutManagerCompat$1;
.super Lccsanandroid/content/BroadcastReceiver;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;Lccsanandroid/content/IntentSender;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lccsanandroid/content/IntentSender;


# direct methods
.method constructor <init>(Lccsanandroid/content/IntentSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Lccsanandroid/content/IntentSender;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Lccsanandroid/content/IntentSender;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/content/IntentSender;->sendIntent(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;Lccsanandroid/content/IntentSender$OnFinished;Lccsanandroid/os/Handler;)V
    :try_end_0
    .catch Lccsanandroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 215
    :goto_0
    return-void
.end method
