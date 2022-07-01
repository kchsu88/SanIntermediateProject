.class public final Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbsignalcommon/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    nop

    .line 153
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    .line 153
    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    if-lez p4, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    and-int/2addr p3, p4

    if-eq p3, p4, :cond_1

    .line 156
    new-instance p3, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    .line 157
    :cond_1
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 158
    :catch_0
    move-exception p3

    .line 159
    :try_start_1
    new-instance p4, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    invoke-direct {p4, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/Exception;)V

    .line 160
    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;->a(Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p4, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;->a(Ljava/lang/String;)V

    .line 162
    invoke-static {p4}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :goto_1
    return-void

    .line 163
    :goto_2
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 140
    nop

    .line 142
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-object p1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 147
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/lang/reflect/Method;
    .locals 1

    .line 169
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method
