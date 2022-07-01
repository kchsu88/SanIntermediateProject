.class Lccsanandroidx/appcompat/widget/ActivityChooserView$1;
.super Lccsanandroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActivityChooserView;

    .line 134
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$1;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroid/database/DataSetObserver;->onChanged()V

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$1;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroid/database/DataSetObserver;->onInvalidated()V

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$1;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 145
    return-void
.end method
