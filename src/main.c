#include <stdio.h>
#include <Iimpl.h>

int main()
{
    const Iimpl *ptr = get_impl_instance();

    ptr->initialize();

    if (ptr->is_initialized())
        ptr->print_impl();

    ptr->destroy();

    return 0;
}