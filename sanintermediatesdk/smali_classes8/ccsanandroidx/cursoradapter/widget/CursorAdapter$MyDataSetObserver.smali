.class Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
.super Lccsanandroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method constructor <init>(Lccsanandroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    .line 493
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 497
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 498
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 499
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 503
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 504
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 505
    return-void
.end method