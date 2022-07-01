.class public Lccsanandroidx/appcompat/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Lccsanandroid/view/Window$Callback;


# instance fields
.field final mWrapped:Lccsanandroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lccsanandroid/view/Window$Callback;)V
    .locals 2
    .param p1, "wrapped"    # Lccsanandroid/view/Window$Callback;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 79
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchGenericMotionEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 59
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 64
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchKeyShortcutEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 84
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 69
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 74
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->dispatchTrackballEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final getWrapped()Lccsanandroid/view/Window$Callback;
    .locals 1

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    return-object v0
.end method

.method public onActionModeFinished(Lccsanandroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Lccsanandroid/view/ActionMode;

    .line 171
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onActionModeFinished(Lccsanandroid/view/ActionMode;)V

    .line 172
    return-void
.end method

.method public onActionModeStarted(Lccsanandroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Lccsanandroid/view/ActionMode;

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onActionModeStarted(Lccsanandroid/view/ActionMode;)V

    .line 167
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 129
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0}, Lccsanandroid/view/Window$Callback;->onAttachedToWindow()V

    .line 130
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 119
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0}, Lccsanandroid/view/Window$Callback;->onContentChanged()V

    .line 120
    return-void
.end method

.method public onCreatePanelMenu(ILccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 94
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/Window$Callback;->onCreatePanelMenu(ILccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 89
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onCreatePanelView(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 134
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0}, Lccsanandroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 135
    return-void
.end method

.method public onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 109
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/Window$Callback;->onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 104
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/Window$Callback;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILccsanandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/Window$Callback;->onPanelClosed(ILccsanandroid/view/Menu;)V

    .line 140
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 184
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 185
    return-void
.end method

.method public onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "menu"    # Lccsanandroid/view/Menu;

    .line 99
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/view/Window$Callback;->onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Lccsanandroid/view/Menu;I)V
    .locals 1
    .param p2, "menu"    # Lccsanandroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/KeyboardShortcutGroup;",
            ">;",
            "Lccsanandroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 178
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Lccsanandroid/view/Menu;I)V

    .line 179
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0}, Lccsanandroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Lccsanandroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Lccsanandroid/view/SearchEvent;

    .line 145
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onSearchRequested(Lccsanandroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Lccsanandroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Lccsanandroid/view/WindowManager$LayoutParams;

    .line 114
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onWindowAttributesChanged(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 115
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 124
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 125
    return-void
.end method

.method public onWindowStartingActionMode(Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/view/Window$Callback;->onWindowStartingActionMode(Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Lccsanandroid/view/ActionMode$Callback;I)Lccsanandroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lccsanandroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/Window$Callback;->onWindowStartingActionMode(Lccsanandroid/view/ActionMode$Callback;I)Lccsanandroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
