.class Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Lccsanandroidx/fragment/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

.field public lastIn:Lccsanandroidx/fragment/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Lccsanandroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
