.class Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"

# interfaces
.implements Lccsanandroidx/activity/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBackPressedCancellable"
.end annotation


# instance fields
.field private final mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

.field final synthetic this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;


# direct methods
.method constructor <init>(Lccsanandroidx/activity/OnBackPressedDispatcher;Lccsanandroidx/activity/OnBackPressedCallback;)V
    .locals 0
    .param p2, "onBackPressedCallback"    # Lccsanandroidx/activity/OnBackPressedCallback;

    .line 200
    iput-object p1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    .line 202
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 206
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;

    iget-object v0, v0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0}, Lccsanandroidx/activity/OnBackPressedCallback;->removeCancellable(Lccsanandroidx/activity/Cancellable;)V

    .line 208
    return-void
.end method
