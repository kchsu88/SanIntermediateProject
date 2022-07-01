.class Lccsanandroidx/appcompat/widget/ActivityChooserView$5;
.super Lccsanandroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
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

    .line 284
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$5;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 287
    invoke-super {p0}, Lccsanandroid/database/DataSetObserver;->onChanged()V

    .line 288
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$5;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->updateAppearance()V

    .line 289
    return-void
.end method
