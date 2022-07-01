.class public Lccsanandroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/KeyEventDispatcher$Component;
    }
.end annotation


# static fields
.field private static sActionBarFieldsFetched:Z

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

.field private static sDialogFieldsFetched:Z

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 47
    const/4 v1, 0x0

    sput-object v1, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-boolean v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 49
    sput-object v1, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Lccsanandroid/app/ActionBar;Lccsanandroid/view/KeyEvent;)Z
    .locals 6
    .param p0, "actionBar"    # Lccsanandroid/app/ActionBar;
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actionBar",
            "event"
        }
    .end annotation

    .line 96
    sget-boolean v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 98
    nop

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "onMenuKeyEvent"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lccsanandroid/view/KeyEvent;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    :goto_0
    sput-boolean v1, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 104
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 106
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    .line 111
    :cond_1
    :goto_1
    return v2
.end method

.method private static activitySuperDispatchKeyEventPre28(Lccsanandroid/app/Activity;Lccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "event"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->onUserInteraction()V

    .line 117
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 121
    .local v0, "win":Lccsanandroid/view/Window;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v1

    .line 123
    .local v1, "actionBar":Lccsanandroid/app/ActionBar;
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 124
    .local v3, "keyCode":I
    const/16 v4, 0x52

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 125
    invoke-static {v1, p1}, Lccsanandroidx/core/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Lccsanandroid/app/ActionBar;Lccsanandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    return v2

    .line 130
    .end local v1    # "actionBar":Lccsanandroid/app/ActionBar;
    .end local v3    # "keyCode":I
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroid/view/Window;->superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    return v2

    .line 133
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "decor":Lccsanandroid/view/View;
    invoke-static {v1, p1}, Lccsanandroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    return v2

    .line 137
    :cond_2
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v1}, Lccsanandroid/view/View;->getKeyDispatcherState()Lccsanandroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 137
    :goto_0
    invoke-virtual {p1, p0, v2, p0}, Lccsanandroid/view/KeyEvent;->dispatch(Lccsanandroid/view/KeyEvent$Callback;Lccsanandroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static dialogSuperDispatchKeyEventPre28(Lccsanandroid/app/Dialog;Lccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "dialog"    # Lccsanandroid/app/Dialog;
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "event"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lccsanandroidx/core/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Lccsanandroid/app/Dialog;)Lccsanandroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    .line 162
    .local v0, "onKeyListener":Lccsanandroid/content/DialogInterface$OnKeyListener;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, p0, v2, p1}, Lccsanandroid/content/DialogInterface$OnKeyListener;->onKey(Lccsanandroid/content/DialogInterface;ILccsanandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    return v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    .line 166
    .local v2, "win":Lccsanandroid/view/Window;
    invoke-virtual {v2, p1}, Lccsanandroid/view/Window;->superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    return v1

    .line 169
    :cond_1
    invoke-virtual {v2}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v3

    .line 170
    .local v3, "decor":Lccsanandroid/view/View;
    invoke-static {v3, p1}, Lccsanandroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    return v1

    .line 173
    :cond_2
    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {v3}, Lccsanandroid/view/View;->getKeyDispatcherState()Lccsanandroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 173
    :goto_0
    invoke-virtual {p1, p0, v1, p0}, Lccsanandroid/view/KeyEvent;->dispatch(Lccsanandroid/view/KeyEvent$Callback;Lccsanandroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static dispatchBeforeHierarchy(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "root"    # Lccsanandroid/view/View;
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "event"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static dispatchKeyEvent(Lccsanandroidx/core/view/KeyEventDispatcher$Component;Lccsanandroid/view/View;Lccsanandroid/view/Window$Callback;Lccsanandroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "component"    # Lccsanandroidx/core/view/KeyEventDispatcher$Component;
    .param p1, "root"    # Lccsanandroid/view/View;
    .param p2, "callback"    # Lccsanandroid/view/Window$Callback;
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "root",
            "callback",
            "event"
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 84
    invoke-interface {p0, p3}, Lccsanandroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 86
    :cond_1
    instance-of v1, p2, Lccsanandroid/app/Activity;

    if-eqz v1, :cond_2

    .line 87
    move-object v0, p2

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-static {v0, p3}, Lccsanandroidx/core/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Lccsanandroid/app/Activity;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 88
    :cond_2
    instance-of v1, p2, Lccsanandroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 89
    move-object v0, p2

    check-cast v0, Lccsanandroid/app/Dialog;

    invoke-static {v0, p3}, Lccsanandroidx/core/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Lccsanandroid/app/Dialog;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 91
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1, p3}, Lccsanandroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 92
    :cond_4
    invoke-interface {p0, p3}, Lccsanandroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 91
    :cond_6
    return v0
.end method

.method private static getDialogKeyListenerPre28(Lccsanandroid/app/Dialog;)Lccsanandroid/content/DialogInterface$OnKeyListener;
    .locals 3
    .param p0, "dialog"    # Lccsanandroid/app/Dialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 142
    sget-boolean v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lccsanandroid/app/Dialog;

    const-string v2, "mOnKeyListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 148
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 151
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/DialogInterface$OnKeyListener;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 154
    :catch_1
    move-exception v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
