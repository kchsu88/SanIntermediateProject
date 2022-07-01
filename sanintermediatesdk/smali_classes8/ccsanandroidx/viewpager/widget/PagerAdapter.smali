.class public abstract Lccsanandroidx/viewpager/widget/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private final mObservable:Lccsanandroid/database/DataSetObservable;

.field private mViewPagerObserver:Lccsanandroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lccsanandroid/database/DataSetObservable;

    invoke-direct {v0}, Lccsanandroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mObservable:Lccsanandroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Lccsanandroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Lccsanandroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/viewpager/widget/PagerAdapter;->destroyItem(Lccsanandroid/view/View;ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public finishUpdate(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    return-void
.end method

.method public finishUpdate(Lccsanandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;

    .line 154
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager/widget/PagerAdapter;->finishUpdate(Lccsanandroid/view/View;)V

    .line 155
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public instantiateItem(Lccsanandroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Lccsanandroid/view/View;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instantiateItem(Lccsanandroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 115
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager/widget/PagerAdapter;->instantiateItem(Lccsanandroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isViewFromObject(Lccsanandroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Lccsanandroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lccsanandroid/database/DataSetObserver;->onChanged()V

    .line 293
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mObservable:Lccsanandroid/database/DataSetObservable;

    invoke-virtual {v0}, Lccsanandroid/database/DataSetObservable;->notifyChanged()V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroid/database/DataSetObserver;

    .line 303
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mObservable:Lccsanandroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Lccsanandroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public restoreState(Lccsanandroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 263
    return-void
.end method

.method public saveState()Lccsanandroid/os/Parcelable;
    .locals 1

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Lccsanandroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    return-void
.end method

.method public setPrimaryItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Lccsanandroid/view/View;ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method setViewPagerObserver(Lccsanandroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroid/database/DataSetObserver;

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iput-object p1, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Lccsanandroid/database/DataSetObserver;

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startUpdate(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    return-void
.end method

.method public startUpdate(Lccsanandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;

    .line 99
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager/widget/PagerAdapter;->startUpdate(Lccsanandroid/view/View;)V

    .line 100
    return-void
.end method

.method public unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroid/database/DataSetObserver;

    .line 312
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/PagerAdapter;->mObservable:Lccsanandroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Lccsanandroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 313
    return-void
.end method
