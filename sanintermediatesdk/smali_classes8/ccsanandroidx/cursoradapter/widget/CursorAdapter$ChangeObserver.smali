.class Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
.super Lccsanandroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method constructor <init>(Lccsanandroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    .line 477
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Lccsanandroid/database/ContentObserver;-><init>(Lccsanandroid/os/Handler;)V

    .line 478
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 487
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->onContentChanged()V

    .line 488
    return-void
.end method
