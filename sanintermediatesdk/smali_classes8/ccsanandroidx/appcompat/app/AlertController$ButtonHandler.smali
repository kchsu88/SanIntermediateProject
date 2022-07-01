.class final Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;
.super Lccsanandroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;

    .line 156
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 162
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/content/DialogInterface;

    invoke-interface {v0}, Lccsanandroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/DialogInterface;

    iget v2, p1, Lccsanandroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Lccsanandroid/content/DialogInterface$OnClickListener;->onClick(Lccsanandroid/content/DialogInterface;I)V

    .line 168
    nop

    .line 173
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
