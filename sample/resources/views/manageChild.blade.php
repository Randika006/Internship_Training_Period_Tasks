<ul>
    @foreach($childs as $child)
        <li>
            {{ $child->content }}
        @if(count($child->childs))
                @include('manageChild',['childs' => $child->childs])
            @endif
        </li>
    @endforeach
    </ul>
