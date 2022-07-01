.class public Lccsancom/google/android/material/snackbar/Snackbar$Callback;
.super Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lccsancom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lccsancom/google/android/material/snackbar/Snackbar;I)V
    .locals 0
    .param p1, "transientBottomBar"    # Lccsancom/google/android/material/snackbar/Snackbar;
    .param p2, "event"    # I

    .line 101
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 81
    check-cast p1, Lccsancom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/snackbar/Snackbar$Callback;->onDismissed(Lccsancom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public onShown(Lccsancom/google/android/material/snackbar/Snackbar;)V
    .locals 0
    .param p1, "sb"    # Lccsancom/google/android/material/snackbar/Snackbar;

    .line 96
    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lccsancom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/snackbar/Snackbar$Callback;->onShown(Lccsancom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
