.class public final Lccsanandroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static forceSetFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V
    .locals 6
    .param p0, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p1, "factory"    # Lccsanandroid/view/LayoutInflater$Factory2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "factory"
        }
    .end annotation

    .line 72
    sget-boolean v0, Lccsanandroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    const-string v1, "; inflation may have unexpected results."

    const-string v2, "LayoutInflaterCompatHC"

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    :try_start_0
    const-class v3, Lccsanandroid/view/LayoutInflater;

    const-string v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lccsanandroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lccsanandroid/view/LayoutInflater;

    .line 78
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v2, v4, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 83
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 85
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static getFactory(Lccsanandroid/view/LayoutInflater;)Lccsanandroidx/core/view/LayoutInflaterFactory;
    .locals 2
    .param p0, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lccsanandroid/view/LayoutInflater;->getFactory()Lccsanandroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 171
    .local v0, "factory":Lccsanandroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_0

    .line 172
    move-object v1, v0

    check-cast v1, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object v1, v1, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;

    return-object v1

    .line 174
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setFactory(Lccsanandroid/view/LayoutInflater;Lccsanandroidx/core/view/LayoutInflaterFactory;)V
    .locals 3
    .param p0, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p1, "factory"    # Lccsanandroidx/core/view/LayoutInflaterFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "factory"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 113
    if-eqz p1, :cond_0

    new-instance v1, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v1, p1}, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Lccsanandroidx/core/view/LayoutInflaterFactory;)V

    :cond_0
    invoke-virtual {p0, v1}, Lccsanandroid/view/LayoutInflater;->setFactory2(Lccsanandroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    .line 116
    new-instance v1, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v1, p1}, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Lccsanandroidx/core/view/LayoutInflaterFactory;)V

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move-object v0, v1

    .line 117
    .local v0, "factory2":Lccsanandroid/view/LayoutInflater$Factory2;
    invoke-virtual {p0, v0}, Lccsanandroid/view/LayoutInflater;->setFactory2(Lccsanandroid/view/LayoutInflater$Factory2;)V

    .line 119
    invoke-virtual {p0}, Lccsanandroid/view/LayoutInflater;->getFactory()Lccsanandroid/view/LayoutInflater$Factory;

    move-result-object v1

    .line 120
    .local v1, "f":Lccsanandroid/view/LayoutInflater$Factory;
    instance-of v2, v1, Lccsanandroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_3

    .line 123
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v2}, Lccsanandroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 126
    :cond_3
    invoke-static {p0, v0}, Lccsanandroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V

    .line 129
    .end local v0    # "factory2":Lccsanandroid/view/LayoutInflater$Factory2;
    .end local v1    # "f":Lccsanandroid/view/LayoutInflater$Factory;
    :goto_1
    return-void
.end method

.method public static setFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .param p0, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p1, "factory"    # Lccsanandroid/view/LayoutInflater$Factory2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "factory"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lccsanandroid/view/LayoutInflater;->setFactory2(Lccsanandroid/view/LayoutInflater$Factory2;)V

    .line 142
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lccsanandroid/view/LayoutInflater;->getFactory()Lccsanandroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 144
    .local v0, "f":Lccsanandroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Lccsanandroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_0

    .line 147
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v1}, Lccsanandroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V

    .line 153
    .end local v0    # "f":Lccsanandroid/view/LayoutInflater$Factory;
    :cond_1
    :goto_0
    return-void
.end method
