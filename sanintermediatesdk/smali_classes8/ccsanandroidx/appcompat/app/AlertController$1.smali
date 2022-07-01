.class Lccsanandroidx/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController;

    .line 126
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 130
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Lccsanandroid/os/Message;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Lccsanandroid/os/Message;

    invoke-static {v0}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Message;)Lccsanandroid/os/Message;

    move-result-object v0

    .local v0, "m":Lccsanandroid/os/Message;
    goto :goto_0

    .line 132
    .end local v0    # "m":Lccsanandroid/os/Message;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Lccsanandroid/os/Message;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Lccsanandroid/os/Message;

    invoke-static {v0}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Message;)Lccsanandroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Lccsanandroid/os/Message;
    goto :goto_0

    .line 134
    .end local v0    # "m":Lccsanandroid/os/Message;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Lccsanandroid/os/Message;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Lccsanandroid/os/Message;

    invoke-static {v0}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Message;)Lccsanandroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Lccsanandroid/os/Message;
    goto :goto_0

    .line 137
    .end local v0    # "m":Lccsanandroid/os/Message;
    :cond_2
    const/4 v0, 0x0

    .line 140
    .restart local v0    # "m":Lccsanandroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 145
    :cond_3
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController;->mHandler:Lccsanandroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lccsanandroidx/appcompat/app/AlertController$1;->this$0:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v3, v3, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method
