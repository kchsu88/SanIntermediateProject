.class final Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;
.super Ljava/lang/Object;
.source "MBAlertDialog.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/widget/dialog/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/widget/dialog/a;

.field final synthetic b:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;Lccsancom/mbridge/msdk/widget/dialog/a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;->b:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;->a:Lccsancom/mbridge/msdk/widget/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;->a:Lccsancom/mbridge/msdk/widget/dialog/a;

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lccsancom/mbridge/msdk/widget/dialog/a;->b()V

    .line 76
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;->b:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->cancel()V

    .line 77
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;->b:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->clear()V

    .line 78
    return-void
.end method
